// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_csv_instruction_response.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction_response.dart';

/// Result data returned by getInstruction.
class GetInstructionResult {
  /// The names of any related resources that are blocking changes to the instruction.
  final List<String>? blockingResources;
  /// Creation time of instruction.
  final String? createTime;
  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  final GoogleCloudDatalabelingV1beta1CsvInstructionResponse? csvInstruction;
  /// The data type of this instruction.
  final String? dataType;
  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  final String? description;
  /// The display name of the instruction. Maximum of 64 characters.
  final String? displayName;
  /// Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  final String? name;
  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  final GoogleCloudDatalabelingV1beta1PdfInstructionResponse? pdfInstruction;
  /// Last update time of instruction.
  final String? updateTime;

  /// Creates a new [GetInstructionResult].
  /// [blockingResources] The names of any related resources that are blocking changes to the instruction.
  /// [createTime] Creation time of instruction.
  /// [csvInstruction] Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  /// [dataType] The data type of this instruction.
  /// [description] Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  /// [displayName] The display name of the instruction. Maximum of 64 characters.
  /// [name] Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  /// [pdfInstruction] Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  /// [updateTime] Last update time of instruction.
  const GetInstructionResult({
    this.blockingResources,
    this.createTime,
    this.csvInstruction,
    this.dataType,
    this.description,
    this.displayName,
    this.name,
    this.pdfInstruction,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockingResources': ?blockingResources,
      'createTime': ?createTime,
      'csvInstruction': ?csvInstruction?.toMap(),
      'dataType': ?dataType,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'pdfInstruction': ?pdfInstruction?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetInstructionResult.fromMap(Map<String, dynamic> map) {
    return GetInstructionResult(
      blockingResources: (() { final guardedValue = map['blockingResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      csvInstruction: (() { final guardedValue = map['csvInstruction']; if (guardedValue == null) return null; return GoogleCloudDatalabelingV1beta1CsvInstructionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pdfInstruction: (() { final guardedValue = map['pdfInstruction']; if (guardedValue == null) return null; return GoogleCloudDatalabelingV1beta1PdfInstructionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
