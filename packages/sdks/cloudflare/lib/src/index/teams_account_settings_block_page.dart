// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsBlockPage {
  /// Specify the block page background color in `#rrggbb` format when the mode is customized*block*page.
  final pulumi.Input<String?>? backgroundColor;
  /// Specify whether to enable the custom block page.
  final pulumi.Input<bool?>? enabled;
  /// Specify the block page footer text when the mode is customized*block*page.
  final pulumi.Input<String?>? footerText;
  /// Specify the block page header text when the mode is customized*block*page.
  final pulumi.Input<String?>? headerText;
  /// Specify whether to append context to target*uri as query parameters. This applies only when the mode is redirect*uri.
  final pulumi.Input<bool?>? includeContext;
  /// Specify the full URL to the logo file when the mode is customized*block*page.
  final pulumi.Input<String?>? logoPath;
  /// Specify the admin email for users to contact when the mode is customized*block*page.
  final pulumi.Input<String?>? mailtoAddress;
  /// Specify the subject line for emails created from the block page when the mode is customized*block*page.
  final pulumi.Input<String?>? mailtoSubject;
  /// Specify whether to redirect users to a Cloudflare-hosted block page or a customer-provided URI.
  /// Available values: "", "customized*block*page", "redirectUri".
  final pulumi.Input<String?>? mode;
  /// Specify the block page title when the mode is customized*block*page.
  final pulumi.Input<String?>? name;
  /// Indicate that this setting was shared via the Orgs API and read only for the current account.
  final pulumi.Input<bool?>? readOnly;
  /// Indicate the account tag of the account that shared this setting.
  final pulumi.Input<String?>? sourceAccount;
  /// Specify whether to suppress detailed information at the bottom of the block page when the mode is customized*block*page.
  final pulumi.Input<bool?>? suppressFooter;
  /// Specify the URI to redirect users to when the mode is redirect_uri.
  final pulumi.Input<String?>? targetUri;
  /// Indicate the version number of the setting.
  final pulumi.Input<int?>? version;

  /// Creates a new [TeamsAccountSettingsBlockPage].
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
  const TeamsAccountSettingsBlockPage({
    this.backgroundColor,
    this.enabled,
    this.footerText,
    this.headerText,
    this.includeContext,
    this.logoPath,
    this.mailtoAddress,
    this.mailtoSubject,
    this.mode,
    this.name,
    this.readOnly,
    this.sourceAccount,
    this.suppressFooter,
    this.targetUri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?backgroundColor,
      'enabled': ?enabled,
      'footerText': ?footerText,
      'headerText': ?headerText,
      'includeContext': ?includeContext,
      'logoPath': ?logoPath,
      'mailtoAddress': ?mailtoAddress,
      'mailtoSubject': ?mailtoSubject,
      'mode': ?mode,
      'name': ?name,
      'readOnly': ?readOnly,
      'sourceAccount': ?sourceAccount,
      'suppressFooter': ?suppressFooter,
      'targetUri': ?targetUri,
      'version': ?version,
    };
  }

  factory TeamsAccountSettingsBlockPage.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsBlockPage(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      footerText: (() { final guardedValue = map['footerText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerText: (() { final guardedValue = map['headerText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeContext: (() { final guardedValue = map['includeContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logoPath: (() { final guardedValue = map['logoPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailtoAddress: (() { final guardedValue = map['mailtoAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailtoSubject: (() { final guardedValue = map['mailtoSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressFooter: (() { final guardedValue = map['suppressFooter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetUri: (() { final guardedValue = map['targetUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
