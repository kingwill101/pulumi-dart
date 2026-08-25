// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDocumentationSpec {
  /// If set, the latest DataScan job result will be published to Knowledge Catalog.
  final pulumi.Input<bool?>? catalogPublishingEnabled;

  /// Creates a new [DatascanDataDocumentationSpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Knowledge Catalog.
  const DatascanDataDocumentationSpec({
    this.catalogPublishingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogPublishingEnabled': ?catalogPublishingEnabled,
    };
  }

  factory DatascanDataDocumentationSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataDocumentationSpec(
      catalogPublishingEnabled: (() { final guardedValue = map['catalogPublishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
