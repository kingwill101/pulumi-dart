// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_named_location_country.dart';
import 'get_named_location_ip.dart';

/// Result data returned by getNamedLocation.
class GetNamedLocationResult {
  final List<GetNamedLocationCountry>? countries;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetNamedLocationIp>? ips;
  final String? objectId;

  /// Creates a new [GetNamedLocationResult].
  /// [countries] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ips] Optional.
  /// [objectId] Optional.
  const GetNamedLocationResult({
    this.countries,
    this.displayName,
    this.id,
    this.ips,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countries': ?(() { final guardedValue = countries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNamedLocationCountry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'displayName': ?displayName,
      'id': ?id,
      'ips': ?(() { final guardedValue = ips; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNamedLocationIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'objectId': ?objectId,
    };
  }

  factory GetNamedLocationResult.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationResult(
      countries: (() { final guardedValue = map['countries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNamedLocationCountry>(guardedValue, (value) => GetNamedLocationCountry.fromMap((value as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNamedLocationIp>(guardedValue, (value) => GetNamedLocationIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
