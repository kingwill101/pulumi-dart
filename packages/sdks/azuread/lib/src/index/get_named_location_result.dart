// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_named_location_country.dart';
import 'get_named_location_ip.dart';

/// Result data returned by getNamedLocation.
class GetNamedLocationResult {
  final List<GetNamedLocationCountry> countries;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetNamedLocationIp> ips;
  final String objectId;

  /// Creates a new [GetNamedLocationResult].
  /// [countries] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ips] Required.
  /// [objectId] Required.
  GetNamedLocationResult({
    required this.countries,
    required this.displayName,
    required this.id,
    required this.ips,
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countries':
          pulumi.Input.encodeList<
            GetNamedLocationCountry,
            Map<String, dynamic>
          >(countries, (value) => value.toMap()),
      'displayName': displayName,
      'id': id,
      'ips': pulumi.Input.encodeList<GetNamedLocationIp, Map<String, dynamic>>(
        ips,
        (value) => value.toMap(),
      ),
      'objectId': objectId,
    };
  }

  factory GetNamedLocationResult.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationResult(
      countries: pulumi.Input.decodeList<GetNamedLocationCountry>(
        map['countries']!,
        (value) => GetNamedLocationCountry.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      ips: pulumi.Input.decodeList<GetNamedLocationIp>(
        map['ips']!,
        (value) =>
            GetNamedLocationIp.fromMap((value as Map).cast<String, dynamic>()),
      ),
      objectId: map['objectId'] as String,
    );
  }
}
