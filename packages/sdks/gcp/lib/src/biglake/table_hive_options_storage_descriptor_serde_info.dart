// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableHiveOptionsStorageDescriptorSerdeInfo {
  /// The fully qualified Java class name of the serialization library.
  final pulumi.Input<String?>? serializationLib;

  /// Creates a new [TableHiveOptionsStorageDescriptorSerdeInfo].
  /// [serializationLib] The fully qualified Java class name of the serialization library.
  const TableHiveOptionsStorageDescriptorSerdeInfo({
    this.serializationLib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serializationLib': ?serializationLib,
    };
  }

  factory TableHiveOptionsStorageDescriptorSerdeInfo.fromMap(Map<String, dynamic> map) {
    return TableHiveOptionsStorageDescriptorSerdeInfo(
      serializationLib: (() { final guardedValue = map['serializationLib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
