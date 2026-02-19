import 'package:web/web.dart';
import 'platform_detector.dart';

PlatformType get currentType {
  if (isWebIOS()) return PlatformType.WebIos;
  if (isWebAndroid()) return PlatformType.WebAndroid;
  return PlatformType.Web;
}

final _iOS = [
  'iPad Simulator',
  'iPhone Simulator',
  'iPod Simulator',
  'iPad',
  'iPhone',
  'iPod'
];

bool isWebIOS() {
  var matches = false;
  _iOS.forEach((name) {
    if (window.navigator.platform.contains(name) ||
        window.navigator.userAgent.contains(name)) {
      matches = true;
    }
  });
  return matches;
}

bool isWebAndroid() =>
    window.navigator.platform == "Android" ||
    window.navigator.userAgent.contains("Android");
