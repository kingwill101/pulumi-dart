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
  /// > Exactly one of `ip` or `country` must be specified. Changing between these forces a new resource to be created.
  final pulumi.Input<NamedLocationIp>? ip;
  /// The object ID of the named location.
  final pulumi.Input<String>? objectId;

  /// Creates a new [NamedLocationState].
  /// [country] A `country` block as documented below, which configures a country-based named location.
  /// [displayName] The friendly name for this named location.
  /// [ip] An `ip` block as documented below, which configures an IP-based named location.
  /// [objectId] The object ID of the named location.
  NamedLocationState({
    pulumi.Output<NamedLocationCountry>? country,
    pulumi.Output<String>? displayName,
    pulumi.Output<NamedLocationIp>? ip,
    pulumi.Output<String>? objectId,
  }) :
      country = pulumi.Input.asOptionalInput<NamedLocationCountry>(country),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      ip = pulumi.Input.asOptionalInput<NamedLocationIp>(ip),
      objectId = pulumi.Input.asOptionalInput<String>(objectId);

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
      country: map['country'] == null ? null : pulumi.Output.create<NamedLocationCountry>(NamedLocationCountry.fromMap((map['country'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<NamedLocationIp>(NamedLocationIp.fromMap((map['ip'] as Map).cast<String, dynamic>())),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
    );
  }
}

