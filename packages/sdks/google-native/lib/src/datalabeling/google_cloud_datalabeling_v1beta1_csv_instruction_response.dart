// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated: this instruction format is not supported any more. Instruction from a CSV file.
class GoogleCloudDatalabelingV1beta1CsvInstructionResponse {
  /// CSV file for the instruction. Only gcs path is allowed.
  final pulumi.Input<String> gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1CsvInstructionResponse].
  /// [gcsFileUri] CSV file for the instruction. Only gcs path is allowed.
  GoogleCloudDatalabelingV1beta1CsvInstructionResponse({
    required this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcsFileUri': gcsFileUri};
  }

  factory GoogleCloudDatalabelingV1beta1CsvInstructionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1CsvInstructionResponse(
      gcsFileUri: pulumi.Input.fromValue(map['gcsFileUri'] as String),
    );
  }
}
