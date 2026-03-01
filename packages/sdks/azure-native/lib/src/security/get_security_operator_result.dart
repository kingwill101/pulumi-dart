// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';

/// Result data returned by getSecurityOperator.
class GetSecurityOperatorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetSecurityOperatorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [identity] Identity for the resource.
  /// [name] Resource name
  /// [type] Resource type
  GetSecurityOperatorResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory GetSecurityOperatorResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityOperatorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

