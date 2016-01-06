# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/andrew/ANDROID/android-sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontobfuscate

## Butter Knife
# http://jakewharton.github.io/butterknife/
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

## Guava
# https://github.com/krschultz/android-proguard-snippets/blob/master/libraries/proguard-guava.pro
-dontwarn javax.annotation.**
-dontwarn javax.inject.**
-dontwarn sun.misc.Unsafe
-dontwarn java.lang.ClassValue
-dontwarn com.google.j2objc.annotations.Weak
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

-keep class com.google.common.io.Resources {
    public static <methods>;
}
-keep class com.google.common.collect.Lists {
    public static ** reverse(**);
}
-keep class com.google.common.base.Charsets {
    public static <fields>;
}
-keep class com.google.common.base.Joiner {
    public static com.google.common.base.Joiner on(java.lang.String);
    public ** join(...);
}

-keep class com.google.common.collect.MapMakerInternalMap$ReferenceEntry
-keep class com.google.common.cache.LocalCache$ReferenceEntry

## Stream Support
# http://sourceforge.net/p/streamsupport/discussion/general/thread/f70caf77/
-keep class java8.**
-dontwarn java8.**

## Retrolambda
# https://github.com/evant/gradle-retrolambda
-dontwarn java.lang.invoke.*

## Apache commons
# http://stackoverflow.com/questions/13122476/org-apache-commons-collections-beanmap-cant-find-referenced-class-java-beans-i
-dontwarn org.apache.commons.collections.BeanMap
-dontwarn java.beans.**


## Gson
-keepattributes Signature
-keepattributes *Annotation*
-keep class sun.misc.Unsafe { *; }

# todo add application classes that will be serialized/deserialized over Gson
#-keep class %packagename%.model.** { *; }
