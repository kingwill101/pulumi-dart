// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNamedLocationCountry {
  final pulumi.Input<List<String>> countriesAndRegions;
  final pulumi.Input<String> countryLookupMethod;
  final pulumi.Input<bool> includeUnknownCountriesAndRegions;

  /// Creates a new [GetNamedLocationCountry].
  /// [countriesAndRegions] Required.
  /// [countryLookupMethod] Required.
  /// [includeUnknownCountriesAndRegions] Required.
  GetNamedLocationCountry({
    required this.countriesAndRegions,
    required this.countryLookupMethod,
    required this.includeUnknownCountriesAndRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countriesAndRegions': countriesAndRegions,
      'countryLookupMethod': countryLookupMethod,
      'includeUnknownCountriesAndRegions': includeUnknownCountriesAndRegions,
    };
  }

  factory GetNamedLocationCountry.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationCountry(
      countriesAndRegions: ((map['countriesAndRegions'] as List).cast<String>()).input(),
      countryLookupMethod: (map['countryLookupMethod'] as String).input(),
      includeUnknownCountriesAndRegions: (map['includeUnknownCountriesAndRegions'] as bool).input(),
    );
  }
}

