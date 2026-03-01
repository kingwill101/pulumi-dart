// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_location_country.dart';
import 'named_location_ip.dart';

/// {@template pulumi_index_named_location_named_location_args_doc}
/// The set of arguments for NamedLocation.
/// {@endtemplate}
/// {@macro pulumi_index_named_location_named_location_args_doc}
class NamedLocationArgs {
  /// A `country` block as documented below, which configures a country-based named location.
  final pulumi.Input<NamedLocationCountry>? country;
  /// The friendly name for this named location.
  final pulumi.Input<String> displayName;
  /// An `ip` block as documented below, which configures an IP-based named location.
  ///
  /// > Exactly one of `ip` or `country` must be specified. Changing between these forces a new resource to be created.
  final pulumi.Input<NamedLocationIp>? ip;

  /// Creates a new [NamedLocationArgs].
  /// [country] A `country` block as documented below, which configures a country-based named location.
  /// [displayName] The friendly name for this named location.
  /// [ip] An `ip` block as documented below, which configures an IP-based named location.
  NamedLocationArgs({
    pulumi.Output<NamedLocationCountry>? country,
    required pulumi.Output<String> displayName,
    pulumi.Output<NamedLocationIp>? ip,
  }) :
      country = pulumi.Input.asOptionalInput<NamedLocationCountry>(country),
      displayName = pulumi.Input.asInput<String>(displayName),
      ip = pulumi.Input.asOptionalInput<NamedLocationIp>(ip);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?pulumi.Input.mapOptionalInputValue<NamedLocationCountry, Map<String, dynamic>>(country, (value) => value.toMap()),
      'displayName': displayName,
      'ip': ?pulumi.Input.mapOptionalInputValue<NamedLocationIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
    };
  }

  factory NamedLocationArgs.fromMap(Map<String, dynamic> map) {
    return NamedLocationArgs(
      country: map['country'] == null ? null : pulumi.Output.create<NamedLocationCountry>(NamedLocationCountry.fromMap((map['country'] as Map).cast<String, dynamic>())),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<NamedLocationIp>(NamedLocationIp.fromMap((map['ip'] as Map).cast<String, dynamic>())),
    );
  }
}

