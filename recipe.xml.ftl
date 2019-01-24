<?xml version="1.0"?>
<recipe>
	<dependency mavenUrl="io.reactivex.rxjava2:rxjava:2.+"/>
	<dependency mavenUrl="io.reactivex.rxjava2:rxandroid:2.+"/>
	<dependency mavenUrl="com.amitshekhar.android:rx2-android-networking:1.+"/>
	<dependency mavenUrl="com.google.dagger:dagger:2.+" />
	<dependency mavenUrl="com.google.dagger:dagger-compiler:2.+" gradleConfiguration="kapt" />
	<dependency mavenUrl="com.google.dagger:dagger-android-processor:2.+" gradleConfiguration="kapt" />
	<dependency mavenUrl="com.google.dagger:dagger-android-support:2.+" />
	
	<mkdir at="${escapeXmlAttribute(srcOut)}/base"/>
	<mkdir at="${escapeXmlAttribute(srcOut)}/di"/>
	
	<instantiate from="root/src/app_package/MvpApp.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/MvpApp.kt"/>
					
	<instantiate from="root/src/app_package/BaseActivity.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.kt"/>
					
	<instantiate from="root/src/app_package/BaseFragment.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/BaseFragment.kt"/>
					
	<instantiate from="root/src/app_package/BaseInteractor.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/BaseInteractor.kt"/>
					
	<instantiate from="root/src/app_package/BasePresenter.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/BasePresenter.kt"/>
					
	<instantiate from="root/src/app_package/MvpInteractor.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/MvpInteractor.kt"/>
					
	<instantiate from="root/src/app_package/MvpPresenter.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/MvpPresenter.kt"/>
					
	<instantiate from="root/src/app_package/MvpView.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/MvpView.kt"/>
					
	<instantiate from="root/src/app_package/AppSchedulerProvider.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/AppSchedulerProvider.kt"/>
					
	<instantiate from="root/src/app_package/SchedulerProvider.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/base/SchedulerProvider.kt"/>
					
	<instantiate from="root/src/app_package/ActivityBuilder.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/di/ActivityBuilder.kt"/>
					
	<instantiate from="root/src/app_package/AppComponent.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/di/AppComponent.kt"/>
					
	<instantiate from="root/src/app_package/AppModule.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/di/AppModule.kt"/>
</recipe>