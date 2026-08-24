// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomPages resources.
class CustomPagesState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<String?>? description;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  final pulumi.Input<String?>? identifier;
  final pulumi.Input<String?>? modifiedOn;
  final pulumi.Input<String?>? previewTarget;
  final pulumi.Input<List<String>?>? requiredTokens;
  /// The custom page state.
  /// Available values: "default", "customized".
  final pulumi.Input<String?>? state;
  /// The URL associated with the custom page.
  final pulumi.Input<String?>? url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomPagesState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [createdOn] Optional.
  /// [description] Optional.
  /// [identifier] Error Page Types
  /// [modifiedOn] Optional.
  /// [previewTarget] Optional.
  /// [requiredTokens] Optional.
  /// [state] The custom page state.
  /// [url] The URL associated with the custom page.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomPagesState({
    this.accountId,
    this.createdOn,
    this.description,
    this.identifier,
    this.modifiedOn,
    this.previewTarget,
    this.requiredTokens,
    this.state,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'identifier': ?identifier,
      'modifiedOn': ?modifiedOn,
      'previewTarget': ?previewTarget,
      'requiredTokens': ?requiredTokens,
      'state': ?state,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory CustomPagesState.fromMap(Map<String, dynamic> map) {
    return CustomPagesState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewTarget: (() { final guardedValue = map['previewTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredTokens: (() { final guardedValue = map['requiredTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
