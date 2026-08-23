// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationJsonOption {
  /// The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final pulumi.Input<String> encoding;

  /// Creates a new [GetTableExternalDataConfigurationJsonOption].
  /// [encoding] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  const GetTableExternalDataConfigurationJsonOption({
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
    };
  }

  factory GetTableExternalDataConfigurationJsonOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationJsonOption(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
    );
  }
}
