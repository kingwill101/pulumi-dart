// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_token_condition.dart';
import 'api_token_policy.dart';

/// Input properties used for looking up and filtering ApiToken resources.
class ApiTokenState {
  final pulumi.Input<ApiTokenCondition?>? condition;
  /// The email address of the user who created the token at the time of
  /// creation. Only present for Account Owned API Tokens when a creator email
  /// was available.
  final pulumi.Input<String?>? creatorEmailAtCreation;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final pulumi.Input<String?>? expiresOn;
  /// The time on which the token was created.
  final pulumi.Input<String?>? issuedOn;
  /// Last time the token was used.
  final pulumi.Input<String?>? lastUsedOn;
  /// Last time the token was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Token name.
  final pulumi.Input<String?>? name;
  /// The time before which the token MUST NOT be accepted for processing.
  final pulumi.Input<String?>? notBefore;
  /// List of access policies assigned to the token.
  final pulumi.Input<List<ApiTokenPolicy>?>? policies;
  /// The identifier of the service that provisioned the token. For an
  /// OAuth-provisioned token, this is the OAuth client identifier. Present
  /// when `provisionerType` is present and null when the identifier is
  /// unavailable.
  final pulumi.Input<String?>? provisionerId;
  /// The type of service that provisioned the token. Only present for
  /// provisioned Account Owned API Tokens.
  final pulumi.Input<String?>? provisionerType;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final pulumi.Input<String?>? status;
  /// The token value.
  final pulumi.Input<String?>? value;

  /// Creates a new [ApiTokenState].
  /// [condition] Optional.
  /// [creatorEmailAtCreation] The email address of the user who created the token at the time of
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [issuedOn] The time on which the token was created.
  /// [lastUsedOn] Last time the token was used.
  /// [modifiedOn] Last time the token was modified.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] List of access policies assigned to the token.
  /// [provisionerId] The identifier of the service that provisioned the token. For an
  /// [provisionerType] The type of service that provisioned the token. Only present for
  /// [status] Status of the token.
  /// [value] The token value.
  const ApiTokenState({
    this.condition,
    this.creatorEmailAtCreation,
    this.expiresOn,
    this.issuedOn,
    this.lastUsedOn,
    this.modifiedOn,
    this.name,
    this.notBefore,
    this.policies,
    this.provisionerId,
    this.provisionerType,
    this.status,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<ApiTokenCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'creatorEmailAtCreation': ?creatorEmailAtCreation,
      'expiresOn': ?expiresOn,
      'issuedOn': ?issuedOn,
      'lastUsedOn': ?lastUsedOn,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'notBefore': ?notBefore,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<ApiTokenPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ApiTokenPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisionerId': ?provisionerId,
      'provisionerType': ?provisionerType,
      'status': ?status,
      'value': ?value,
    };
  }

  factory ApiTokenState.fromMap(Map<String, dynamic> map) {
    return ApiTokenState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creatorEmailAtCreation: (() { final guardedValue = map['creatorEmailAtCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUsedOn: (() { final guardedValue = map['lastUsedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiTokenPolicy>(guardedValue, (value) => ApiTokenPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisionerId: (() { final guardedValue = map['provisionerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionerType: (() { final guardedValue = map['provisionerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
