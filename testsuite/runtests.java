import com.opera.core.systems.OperaDriver;
import com.opera.core.systems.settings.OperaDriverSettings;

OperaDriverSettings settings = new OperaDriverSettings();
settings.setOperaBinaryLocation("G:\\Opera\\opera-core-integration-201-buildsetid_36746-core_2_10-wingogi2008\\profiles\\release_desktop\\wingogi_release_desktop.exe");

WebDriver driver = new OperaDriver();
driver.navigate().to("http://www.opera.com/");
