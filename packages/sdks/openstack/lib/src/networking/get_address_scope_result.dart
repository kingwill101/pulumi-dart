// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAddressScope.
class GetAddressScopeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final int? ipVersion;
  /// See Argument Reference above.
  final String? name;
  /// See Argument Reference above.
  final String? projectId;
  final String? region;
  /// See Argument Reference above.
  final bool? shared;

  /// Creates a new [GetAddressScopeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] Optional.
  /// [shared] See Argument Reference above.
  const GetAddressScopeResult({
    required this.id,
    this.ipVersion,
    this.name,
    this.projectId,
    this.region,
    this.shared,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
    };
  }

  factory GetAddressScopeResult.fromMap(Map<String, dynamic> map) {
    return GetAddressScopeResult(
      id: map['id'] as String,
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

