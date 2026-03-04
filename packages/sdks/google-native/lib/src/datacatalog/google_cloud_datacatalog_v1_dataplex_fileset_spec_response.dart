// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_dataplex_spec_response.dart';

/// Entry specyfication for a Dataplex fileset.
class GoogleCloudDatacatalogV1DataplexFilesetSpecResponse {
  /// Common Dataplex fields.
  final pulumi.Input<GoogleCloudDatacatalogV1DataplexSpecResponse> dataplexSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexFilesetSpecResponse].
  /// [dataplexSpec] Common Dataplex fields.
  GoogleCloudDatacatalogV1DataplexFilesetSpecResponse({
    required this.dataplexSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudDatacatalogV1DataplexSpecResponse,
            Map<String, dynamic>
          >(dataplexSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1DataplexFilesetSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1DataplexFilesetSpecResponse(
      dataplexSpec: pulumi.Input.fromValue(
        GoogleCloudDatacatalogV1DataplexSpecResponse.fromMap(
          (map['dataplexSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
