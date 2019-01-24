package ${packageName}


import android.app.Activity
import android.app.Application
import ${packageName}.di.DaggerAppComponent
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasActivityInjector
import javax.inject.Inject

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
class MvpApp : Application(), HasActivityInjector {

    @Inject
    internal lateinit var activityDispatchingAndroidInjector: DispatchingAndroidInjector<Activity>

    override fun activityInjector() = activityDispatchingAndroidInjector

    override fun onCreate() {
        super.onCreate()
        initDagger()
    }

    private fun initDagger() {
        DaggerAppComponent.builder()
            .application(this)
            .build()
            .inject(this)
    }

}