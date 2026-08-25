// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesHdfsConnectionProperties {
  /// The content of the Hadoop Distributed File System
  /// configuration file (core-site.xml).
  final pulumi.Input<String?>? coreSiteXml;
  /// The technology type of HdfsConnection.
  final pulumi.Input<String?>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesHdfsConnectionProperties].
  /// [coreSiteXml] The content of the Hadoop Distributed File System
  /// [technologyType] The technology type of HdfsConnection.
  const GoldengateConnectionPropertiesHdfsConnectionProperties({
    this.coreSiteXml,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreSiteXml': ?coreSiteXml,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesHdfsConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesHdfsConnectionProperties(
      coreSiteXml: (() { final guardedValue = map['coreSiteXml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
