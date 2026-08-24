// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessCustomPage resources.
class AccessCustomPageState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Custom page HTML.
  final pulumi.Input<String?>? customHtml;
  /// Custom page name.
  final pulumi.Input<String?>? name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden".
  final pulumi.Input<String?>? type;
  /// UUID.
  final pulumi.Input<String?>? uid;

  /// Creates a new [AccessCustomPageState].
  /// [accountId] Identifier.
  /// [customHtml] Custom page HTML.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  const AccessCustomPageState({
    this.accountId,
    this.customHtml,
    this.name,
    this.type,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'customHtml': ?customHtml,
      'name': ?name,
      'type': ?type,
      'uid': ?uid,
    };
  }

  factory AccessCustomPageState.fromMap(Map<String, dynamic> map) {
    return AccessCustomPageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customHtml: (() { final guardedValue = map['customHtml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
