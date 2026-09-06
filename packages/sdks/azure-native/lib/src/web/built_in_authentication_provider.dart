import 'package:pulumi/pulumi.dart' as pulumi;

/// The default authentication provider to use when multiple providers are configured.
/// This setting is only needed if multiple providers are configured and the unauthenticated client
/// action is set to "RedirectToLoginPage".
enum BuiltInAuthenticationProvider implements pulumi.PulumiEnum<String> {
  valueAzureActiveDirectory("AzureActiveDirectory"),
  valueFacebook("Facebook"),
  valueGoogle("Google"),
  valueMicrosoftAccount("MicrosoftAccount"),
  valueTwitter("Twitter"),
  valueGithub("Github");

  const BuiltInAuthenticationProvider(this.wireValue);
  @override
  final String wireValue;

  static BuiltInAuthenticationProvider fromValue(String value) {
    for (final item in BuiltInAuthenticationProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuiltInAuthenticationProvider value: $value');
  }
}
