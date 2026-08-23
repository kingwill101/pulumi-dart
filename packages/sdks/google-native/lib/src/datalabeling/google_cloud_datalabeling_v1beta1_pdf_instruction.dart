// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instruction from a PDF file.
class GoogleCloudDatalabelingV1beta1PdfInstruction {
  /// PDF file for the instruction. Only gcs path is allowed.
  final pulumi.Input<String>? gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1PdfInstruction].
  /// [gcsFileUri] PDF file for the instruction. Only gcs path is allowed.
  const GoogleCloudDatalabelingV1beta1PdfInstruction({
    this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsFileUri': ?gcsFileUri,
    };
  }

  factory GoogleCloudDatalabelingV1beta1PdfInstruction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1PdfInstruction(
      gcsFileUri: (() { final guardedValue = map['gcsFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
