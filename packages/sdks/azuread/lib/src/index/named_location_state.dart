// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_location_country.dart';
import 'named_location_ip.dart';

/// Input properties used for looking up and filtering NamedLocation resources.
class NamedLocationState {
  /// A `country` block as documented below, which configures a country-based named location.
  final pulumi.Input<NamedLocationCountry>? country;
  /// The friendly name for this named location.
  final pulumi.Input<String>? displayName;
  /// An `ip` block as documented below, which configures an IP-based named location.
  ///
  /// &gt; Exactly one of `ip` or `country` must be specified. Changing between these forces a new resource to be created.
  final pulumi.Input<NamedLocationIp>? ip;
  /// The object ID of the named location.
  final pulumi.Input<String>? objectId;

  /// Creates a new [NamedLocationState].
  /// [country] A `country` block as documented below, which configures a country-based named location.
  /// [displayName] The friendly name for this named location.
  /// [ip] An `ip` block as documented below, which configures an IP-based named location.
  /// [objectId] The object ID of the named location.
  const NamedLocationState({
    this.country,
    this.displayName,
    this.ip,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?pulumi.Input.mapOptionalInputValue<NamedLocationCountry, Map<String, dynamic>>(country, (value) => value.toMap()),
      'displayName': ?displayName,
      'ip': ?pulumi.Input.mapOptionalInputValue<NamedLocationIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'objectId': ?objectId,
    };
  }

  factory NamedLocationState.fromMap(Map<String, dynamic> map) {
    return NamedLocationState(
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedLocationCountry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedLocationIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

