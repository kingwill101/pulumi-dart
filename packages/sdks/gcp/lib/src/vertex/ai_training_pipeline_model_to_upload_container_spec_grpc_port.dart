// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineModelToUploadContainerSpecGrpcPort {
  /// The number of the port on the container.
  final pulumi.Input<int> containerPort;

  /// Creates a new [AiTrainingPipelineModelToUploadContainerSpecGrpcPort].
  /// [containerPort] The number of the port on the container.
  const AiTrainingPipelineModelToUploadContainerSpecGrpcPort({
    required this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
    };
  }

  factory AiTrainingPipelineModelToUploadContainerSpecGrpcPort.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadContainerSpecGrpcPort(
      containerPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['containerPort'])),
    );
  }
}
