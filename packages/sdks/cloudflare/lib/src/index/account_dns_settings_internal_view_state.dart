// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountDnsSettingsInternalView resources.
class AccountDnsSettingsInternalViewState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// When the view was created.
  final pulumi.Input<String?>? createdTime;
  /// When the view was last modified.
  final pulumi.Input<String?>? modifiedTime;
  /// The name of the view.
  final pulumi.Input<String?>? name;
  /// The list of zones linked to this view.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [AccountDnsSettingsInternalViewState].
  /// [accountId] Identifier.
  /// [createdTime] When the view was created.
  /// [modifiedTime] When the view was last modified.
  /// [name] The name of the view.
  /// [zones] The list of zones linked to this view.
  const AccountDnsSettingsInternalViewState({
    this.accountId,
    this.createdTime,
    this.modifiedTime,
    this.name,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdTime': ?createdTime,
      'modifiedTime': ?modifiedTime,
      'name': ?name,
      'zones': ?zones,
    };
  }

  factory AccountDnsSettingsInternalViewState.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsInternalViewState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedTime: (() { final guardedValue = map['modifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
