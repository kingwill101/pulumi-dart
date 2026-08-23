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
  const GetNamedLocationCountry({
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
      countriesAndRegions: pulumi.Input.fromValue((map['countriesAndRegions'] as List).cast<String>()),
      countryLookupMethod: pulumi.Input.fromValue(map['countryLookupMethod'] as String),
      includeUnknownCountriesAndRegions: pulumi.Input.fromValue(map['includeUnknownCountriesAndRegions'] as bool),
    );
  }
}
