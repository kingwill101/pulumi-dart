// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_dataplex_fileset_spec.dart';

/// Specification that applies to a fileset. Valid only for entries with the 'FILESET' type.
class GoogleCloudDatacatalogV1FilesetSpec {
  /// Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.
  final pulumi.Input<GoogleCloudDatacatalogV1DataplexFilesetSpec>?
  dataplexFileset;

  /// Creates a new [GoogleCloudDatacatalogV1FilesetSpec].
  /// [dataplexFileset] Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.
  GoogleCloudDatacatalogV1FilesetSpec({this.dataplexFileset});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexFileset':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatacatalogV1DataplexFilesetSpec,
            Map<String, dynamic>
          >(dataplexFileset, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1FilesetSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1FilesetSpec(
      dataplexFileset: (() {
        final guardedValue = map['dataplexFileset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatacatalogV1DataplexFilesetSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
