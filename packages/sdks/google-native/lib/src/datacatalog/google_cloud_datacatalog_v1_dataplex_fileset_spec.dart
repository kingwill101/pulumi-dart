// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_dataplex_spec.dart';

/// Entry specyfication for a Dataplex fileset.
class GoogleCloudDatacatalogV1DataplexFilesetSpec {
  /// Common Dataplex fields.
  final pulumi.Input<GoogleCloudDatacatalogV1DataplexSpec>? dataplexSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexFilesetSpec].
  /// [dataplexSpec] Common Dataplex fields.
  GoogleCloudDatacatalogV1DataplexFilesetSpec({
    this.dataplexSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1DataplexSpec, Map<String, dynamic>>(dataplexSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1DataplexFilesetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexFilesetSpec(
      dataplexSpec: (() { final guardedValue = map['dataplexSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1DataplexSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

