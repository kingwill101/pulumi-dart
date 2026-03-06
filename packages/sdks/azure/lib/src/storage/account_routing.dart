// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountRouting {
  /// Specifies the kind of network routing opted by the user. Possible values are `InternetRouting` and `MicrosoftRouting`. Defaults to `MicrosoftRouting`.
  final pulumi.Input<String>? choice;
  /// Should internet routing storage endpoints be published? Defaults to `false`.
  final pulumi.Input<bool>? publishInternetEndpoints;
  /// Should Microsoft routing storage endpoints be published? Defaults to `false`.
  final pulumi.Input<bool>? publishMicrosoftEndpoints;

  /// Creates a new [AccountRouting].
  /// [choice] Specifies the kind of network routing opted by the user. Possible values are `InternetRouting` and `MicrosoftRouting`. Defaults to `MicrosoftRouting`.
  /// [publishInternetEndpoints] Should internet routing storage endpoints be published? Defaults to `false`.
  /// [publishMicrosoftEndpoints] Should Microsoft routing storage endpoints be published? Defaults to `false`.
  const AccountRouting({
    this.choice,
    this.publishInternetEndpoints,
    this.publishMicrosoftEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'choice': ?choice,
      'publishInternetEndpoints': ?publishInternetEndpoints,
      'publishMicrosoftEndpoints': ?publishMicrosoftEndpoints,
    };
  }

  factory AccountRouting.fromMap(Map<String, dynamic> map) {
    return AccountRouting(
      choice: (() { final guardedValue = map['choice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishInternetEndpoints: (() { final guardedValue = map['publishInternetEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publishMicrosoftEndpoints: (() { final guardedValue = map['publishMicrosoftEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

