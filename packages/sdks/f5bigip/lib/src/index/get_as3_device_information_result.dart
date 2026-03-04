// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAs3DeviceInformation.
class GetAs3DeviceInformationResult {
  final List<String>? applications;
  final String as3Json;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String tenant;

  /// Creates a new [GetAs3DeviceInformationResult].
  /// [applications] Optional.
  /// [as3Json] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [tenant] Required.
  GetAs3DeviceInformationResult({
    this.applications,
    required this.as3Json,
    required this.id,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?applications,
      'as3Json': as3Json,
      'id': id,
      'tenant': tenant,
    };
  }

  factory GetAs3DeviceInformationResult.fromMap(Map<String, dynamic> map) {
    return GetAs3DeviceInformationResult(
      applications: (() {
        final guardedValue = map['applications'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      as3Json: map['as3Json'] as String,
      id: map['id'] as String,
      tenant: map['tenant'] as String,
    );
  }
}
