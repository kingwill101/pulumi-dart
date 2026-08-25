// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the project in which the resource belongs.
  final String? project;
  /// A list of secrets matching the filter. Structure is defined below.
  final List<GetSecretsSecret>? secrets;

  /// Creates a new [GetSecretsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [secrets] A list of secrets matching the filter. Structure is defined below.
  const GetSecretsResult({
    this.filter,
    this.id,
    this.project,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'project': ?project,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretsSecret>(guardedValue, (value) => GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
