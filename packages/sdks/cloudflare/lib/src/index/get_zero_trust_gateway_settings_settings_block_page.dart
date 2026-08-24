// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsBlockPage {
  /// Specify the block page background color in `#rrggbb` format when the mode is customized*block*page.
  final pulumi.Input<String> backgroundColor;
  /// Specify whether to enable the custom block page.
  final pulumi.Input<bool> enabled;
  /// Specify the block page footer text when the mode is customized*block*page.
  final pulumi.Input<String> footerText;
  /// Specify the block page header text when the mode is customized*block*page.
  final pulumi.Input<String> headerText;
  /// Specify whether to append context to target*uri as query parameters. This applies only when the mode is redirect*uri.
  final pulumi.Input<bool> includeContext;
  /// Specify the full URL to the logo file when the mode is customized*block*page.
  final pulumi.Input<String> logoPath;
  /// Specify the admin email for users to contact when the mode is customized*block*page.
  final pulumi.Input<String> mailtoAddress;
  /// Specify the subject line for emails created from the block page when the mode is customized*block*page.
  final pulumi.Input<String> mailtoSubject;
  /// Specify whether to redirect users to a Cloudflare-hosted block page or a customer-provided URI.
  /// Available values: "", "customized*block*page", "redirectUri".
  final pulumi.Input<String> mode;
  /// Specify the block page title when the mode is customized*block*page.
  final pulumi.Input<String> name;
  /// Indicate that this setting was shared via the Orgs API and read only for the current account.
  final pulumi.Input<bool> readOnly;
  /// Indicate the account tag of the account that shared this setting.
  final pulumi.Input<String> sourceAccount;
  /// Specify whether to suppress detailed information at the bottom of the block page when the mode is customized*block*page.
  final pulumi.Input<bool> suppressFooter;
  /// Specify the URI to redirect users to when the mode is redirect_uri.
  final pulumi.Input<String> targetUri;
  /// Indicate the version number of the setting.
  final pulumi.Input<int> version;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsBlockPage].
  /// [backgroundColor] Specify the block page background color in `#rrggbb` format when the mode is customized*block*page.
  /// [enabled] Specify whether to enable the custom block page.
  /// [footerText] Specify the block page footer text when the mode is customized*block*page.
  /// [headerText] Specify the block page header text when the mode is customized*block*page.
  /// [includeContext] Specify whether to append context to target*uri as query parameters. This applies only when the mode is redirect*uri.
  /// [logoPath] Specify the full URL to the logo file when the mode is customized*block*page.
  /// [mailtoAddress] Specify the admin email for users to contact when the mode is customized*block*page.
  /// [mailtoSubject] Specify the subject line for emails created from the block page when the mode is customized*block*page.
  /// [mode] Specify whether to redirect users to a Cloudflare-hosted block page or a customer-provided URI.
  /// [name] Specify the block page title when the mode is customized*block*page.
  /// [readOnly] Indicate that this setting was shared via the Orgs API and read only for the current account.
  /// [sourceAccount] Indicate the account tag of the account that shared this setting.
  /// [suppressFooter] Specify whether to suppress detailed information at the bottom of the block page when the mode is customized*block*page.
  /// [targetUri] Specify the URI to redirect users to when the mode is redirect_uri.
  /// [version] Indicate the version number of the setting.
  const GetZeroTrustGatewaySettingsSettingsBlockPage({
    required this.backgroundColor,
    required this.enabled,
    required this.footerText,
    required this.headerText,
    required this.includeContext,
    required this.logoPath,
    required this.mailtoAddress,
    required this.mailtoSubject,
    required this.mode,
    required this.name,
    required this.readOnly,
    required this.sourceAccount,
    required this.suppressFooter,
    required this.targetUri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': backgroundColor,
      'enabled': enabled,
      'footerText': footerText,
      'headerText': headerText,
      'includeContext': includeContext,
      'logoPath': logoPath,
      'mailtoAddress': mailtoAddress,
      'mailtoSubject': mailtoSubject,
      'mode': mode,
      'name': name,
      'readOnly': readOnly,
      'sourceAccount': sourceAccount,
      'suppressFooter': suppressFooter,
      'targetUri': targetUri,
      'version': version,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsBlockPage.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsBlockPage(
      backgroundColor: pulumi.Input.fromValue(map['backgroundColor'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      footerText: pulumi.Input.fromValue(map['footerText'] as String),
      headerText: pulumi.Input.fromValue(map['headerText'] as String),
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      logoPath: pulumi.Input.fromValue(map['logoPath'] as String),
      mailtoAddress: pulumi.Input.fromValue(map['mailtoAddress'] as String),
      mailtoSubject: pulumi.Input.fromValue(map['mailtoSubject'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      sourceAccount: pulumi.Input.fromValue(map['sourceAccount'] as String),
      suppressFooter: pulumi.Input.fromValue(map['suppressFooter'] as bool),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
    );
  }
}
