// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secrets_secret.dart';

/// Result data returned by getRegionalSecrets.
class GetRegionalSecretsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location in which the resource belongs.
  final String? location;
  /// The ID of the project in which the resource belongs.
  final String? project;
  /// A list of regional secrets present in the specified location and matching the filter. Structure is defined below.
  final List<GetRegionalSecretsSecret>? secrets;

  /// Creates a new [GetRegionalSecretsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location in which the resource belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [secrets] A list of regional secrets present in the specified location and matching the filter. Structure is defined below.
  const GetRegionalSecretsResult({
    this.filter,
    this.id,
    this.location,
    this.project,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalSecretsSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRegionalSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalSecretsSecret>(guardedValue, (value) => GetRegionalSecretsSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
