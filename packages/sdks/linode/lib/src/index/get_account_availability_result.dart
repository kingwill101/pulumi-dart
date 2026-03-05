// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountAvailability.
class GetAccountAvailabilityResult {
  /// A set of services which are available to the account in a region.
  final List<String> availables;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The region ID.
  final String region;
  /// A set of services which are unavailable to the account in a region.
  final List<String> unavailables;

  /// Creates a new [GetAccountAvailabilityResult].
  /// [availables] A set of services which are available to the account in a region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] The region ID.
  /// [unavailables] A set of services which are unavailable to the account in a region.
  GetAccountAvailabilityResult({
    required this.availables,
    required this.id,
    required this.region,
    required this.unavailables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availables': availables,
      'id': id,
      'region': region,
      'unavailables': unavailables,
    };
  }

  factory GetAccountAvailabilityResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAvailabilityResult(
      availables: (map['availables'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      unavailables: (map['unavailables'] as List).cast<String>(),
    );
  }
}

