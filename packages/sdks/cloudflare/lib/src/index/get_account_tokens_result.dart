// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_tokens_result_condition.dart';
import 'get_account_tokens_result_policy.dart';

class GetAccountTokensResult {
  final pulumi.Input<GetAccountTokensResultCondition> condition;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final pulumi.Input<String> expiresOn;
  /// Token identifier tag.
  final pulumi.Input<String> id;
  /// The time on which the token was created.
  final pulumi.Input<String> issuedOn;
  /// Last time the token was used.
  final pulumi.Input<String> lastUsedOn;
  /// Last time the token was modified.
  final pulumi.Input<String> modifiedOn;
  /// Token name.
  final pulumi.Input<String> name;
  /// The time before which the token MUST NOT be accepted for processing.
  final pulumi.Input<String> notBefore;
  /// List of access policies assigned to the token.
  final pulumi.Input<List<GetAccountTokensResultPolicy>> policies;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final pulumi.Input<String> status;

  /// Creates a new [GetAccountTokensResult].
  /// [condition] Required.
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [id] Token identifier tag.
  /// [issuedOn] The time on which the token was created.
  /// [lastUsedOn] Last time the token was used.
  /// [modifiedOn] Last time the token was modified.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] List of access policies assigned to the token.
  /// [status] Status of the token.
  const GetAccountTokensResult({
    required this.condition,
    required this.expiresOn,
    required this.id,
    required this.issuedOn,
    required this.lastUsedOn,
    required this.modifiedOn,
    required this.name,
    required this.notBefore,
    required this.policies,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GetAccountTokensResultCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'expiresOn': expiresOn,
      'id': id,
      'issuedOn': issuedOn,
      'lastUsedOn': lastUsedOn,
      'modifiedOn': modifiedOn,
      'name': name,
      'notBefore': notBefore,
      'policies': pulumi.Input.mapInputValue<List<GetAccountTokensResultPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetAccountTokensResultPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetAccountTokensResult.fromMap(Map<String, dynamic> map) {
    return GetAccountTokensResult(
      condition: pulumi.Input.fromValue(GetAccountTokensResultCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuedOn: pulumi.Input.fromValue(map['issuedOn'] as String),
      lastUsedOn: pulumi.Input.fromValue(map['lastUsedOn'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      notBefore: pulumi.Input.fromValue(map['notBefore'] as String),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountTokensResultPolicy>(map['policies']!, (value) => GetAccountTokensResultPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
