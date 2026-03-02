// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsReportConfigObjectMetadataReportOptionsStorageFilters {
  /// The filter to use when specifying which bucket to generate inventory reports for.
  final pulumi.Input<String>? bucket;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptionsStorageFilters].
  /// [bucket] The filter to use when specifying which bucket to generate inventory reports for.
  InsightsReportConfigObjectMetadataReportOptionsStorageFilters({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
    };
  }

  factory InsightsReportConfigObjectMetadataReportOptionsStorageFilters.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptionsStorageFilters(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
    );
  }
}

