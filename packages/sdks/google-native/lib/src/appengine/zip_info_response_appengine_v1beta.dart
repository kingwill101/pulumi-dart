// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The zip file information for a zip deployment.
class ZipInfoResponseAppengineV1beta {
  /// An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.
  final pulumi.Input<int> filesCount;
  /// URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.
  final pulumi.Input<String> sourceUrl;

  /// Creates a new [ZipInfoResponseAppengineV1beta].
  /// [filesCount] An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.
  /// [sourceUrl] URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.
  const ZipInfoResponseAppengineV1beta({
    required this.filesCount,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesCount': filesCount,
      'sourceUrl': sourceUrl,
    };
  }

  factory ZipInfoResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ZipInfoResponseAppengineV1beta(
      filesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['filesCount'])),
      sourceUrl: pulumi.Input.fromValue(map['sourceUrl'] as String),
    );
  }
}
