// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGeoFilter {
  /// The Action of the Geo Filter. Possible values include `Allow` and `Block`.
  final pulumi.Input<String> action;
  /// A List of two letter country codes (e.g. `US`, `GB`) to be associated with this Geo Filter.
  final pulumi.Input<List<String>> countryCodes;
  /// The relative path applicable to geo filter.
  final pulumi.Input<String> relativePath;

  /// Creates a new [EndpointGeoFilter].
  /// [action] The Action of the Geo Filter. Possible values include `Allow` and `Block`.
  /// [countryCodes] A List of two letter country codes (e.g. `US`, `GB`) to be associated with this Geo Filter.
  /// [relativePath] The relative path applicable to geo filter.
  const EndpointGeoFilter({
    required this.action,
    required this.countryCodes,
    required this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'countryCodes': countryCodes,
      'relativePath': relativePath,
    };
  }

  factory EndpointGeoFilter.fromMap(Map<String, dynamic> map) {
    return EndpointGeoFilter(
      action: pulumi.Input.fromValue(map['action'] as String),
      countryCodes: pulumi.Input.fromValue((map['countryCodes'] as List).cast<String>()),
      relativePath: pulumi.Input.fromValue(map['relativePath'] as String),
    );
  }
}
