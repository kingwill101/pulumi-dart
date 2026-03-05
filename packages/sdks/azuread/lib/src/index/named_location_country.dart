// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NamedLocationCountry {
  /// List of countries and/or regions in two-letter format specified by ISO 3166-2.
  final pulumi.Input<List<String>> countriesAndRegions;
  /// Method of detecting country the user is located in. Possible values are `clientIpAddress` for IP-based location and `authenticatorAppGps` for Authenticator app GPS-based location.  Defaults to `clientIpAddress`.
  final pulumi.Input<String>? countryLookupMethod;
  /// Whether IP addresses that don't map to a country or region should be included in the named location. Defaults to `false`.
  final pulumi.Input<bool>? includeUnknownCountriesAndRegions;

  /// Creates a new [NamedLocationCountry].
  /// [countriesAndRegions] List of countries and/or regions in two-letter format specified by ISO 3166-2.
  /// [countryLookupMethod] Method of detecting country the user is located in. Possible values are `clientIpAddress` for IP-based location and `authenticatorAppGps` for Authenticator app GPS-based location.  Defaults to `clientIpAddress`.
  /// [includeUnknownCountriesAndRegions] Whether IP addresses that don't map to a country or region should be included in the named location. Defaults to `false`.
  NamedLocationCountry({
    required this.countriesAndRegions,
    this.countryLookupMethod,
    this.includeUnknownCountriesAndRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countriesAndRegions': countriesAndRegions,
      'countryLookupMethod': ?countryLookupMethod,
      'includeUnknownCountriesAndRegions': ?includeUnknownCountriesAndRegions,
    };
  }

  factory NamedLocationCountry.fromMap(Map<String, dynamic> map) {
    return NamedLocationCountry(
      countriesAndRegions: pulumi.Input.fromValue((map['countriesAndRegions'] as List).cast<String>()),
      countryLookupMethod: (() { final guardedValue = map['countryLookupMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeUnknownCountriesAndRegions: (() { final guardedValue = map['includeUnknownCountriesAndRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

