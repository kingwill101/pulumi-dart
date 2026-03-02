// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions {
  /// The destination bucket that stores the generated inventory reports.
  final pulumi.Input<String> bucket;
  /// The path within the destination bucket to store generated inventory reports.
  final pulumi.Input<String>? destinationPath;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions].
  /// [bucket] The destination bucket that stores the generated inventory reports.
  /// [destinationPath] The path within the destination bucket to store generated inventory reports.
  InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions({
    required this.bucket,
    this.destinationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'destinationPath': ?destinationPath,
    };
  }

  factory InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions(
      bucket: (map['bucket'] as String).input(),
      destinationPath: map['destinationPath'] == null ? null : (map['destinationPath']! as String).input(),
    );
  }
}

