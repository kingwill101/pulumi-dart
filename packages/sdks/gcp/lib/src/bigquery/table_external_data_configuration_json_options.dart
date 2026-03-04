// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationJsonOptions {
  /// The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final pulumi.Input<String>? encoding;

  /// Creates a new [TableExternalDataConfigurationJsonOptions].
  /// [encoding] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  TableExternalDataConfigurationJsonOptions({this.encoding});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'encoding': ?encoding};
  }

  factory TableExternalDataConfigurationJsonOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableExternalDataConfigurationJsonOptions(
      encoding: (() {
        final guardedValue = map['encoding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
