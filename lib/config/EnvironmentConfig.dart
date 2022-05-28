///
/// flutter run --dart-define=CHANNEL_NAME=googleplay --dart-define=PLATFORM=android
///
class EnvironmentConfig {

  // static const x = bool.hasEnvironment("CHANNEL_NAME") ? String.fromEnvironment("CHANNEL_NAME") : null;
  // static const xx = x?.toLowerCase();

  static const CHANNEL_NAME =  bool.hasEnvironment("CHANNEL_NAME") ? String.fromEnvironment("CHANNEL_NAME") : "NA";
  static const PLATFORM = bool.hasEnvironment("PLATFORM") ? String.fromEnvironment("PLATFORM") : "NA";
}
