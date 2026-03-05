// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'explain_query_step_response.dart';

class ExplainQueryStageResponse {
  /// Number of parallel input segments completed.
  final pulumi.Input<String> completedParallelInputs;
  /// Milliseconds the average shard spent on CPU-bound tasks.
  final pulumi.Input<String> computeMsAvg;
  /// Milliseconds the slowest shard spent on CPU-bound tasks.
  final pulumi.Input<String> computeMsMax;
  /// Relative amount of time the average shard spent on CPU-bound tasks.
  final pulumi.Input<double> computeRatioAvg;
  /// Relative amount of time the slowest shard spent on CPU-bound tasks.
  final pulumi.Input<double> computeRatioMax;
  /// Stage end time represented as milliseconds since epoch.
  final pulumi.Input<String> endMs;
  /// IDs for stages that are inputs to this stage.
  final pulumi.Input<List<String>> inputStages;
  /// Human-readable name for stage.
  final pulumi.Input<String> name;
  /// Number of parallel input segments to be processed.
  final pulumi.Input<String> parallelInputs;
  /// Milliseconds the average shard spent reading input.
  final pulumi.Input<String> readMsAvg;
  /// Milliseconds the slowest shard spent reading input.
  final pulumi.Input<String> readMsMax;
  /// Relative amount of time the average shard spent reading input.
  final pulumi.Input<double> readRatioAvg;
  /// Relative amount of time the slowest shard spent reading input.
  final pulumi.Input<double> readRatioMax;
  /// Number of records read into the stage.
  final pulumi.Input<String> recordsRead;
  /// Number of records written by the stage.
  final pulumi.Input<String> recordsWritten;
  /// Total number of bytes written to shuffle.
  final pulumi.Input<String> shuffleOutputBytes;
  /// Total number of bytes written to shuffle and spilled to disk.
  final pulumi.Input<String> shuffleOutputBytesSpilled;
  /// Slot-milliseconds used by the stage.
  final pulumi.Input<String> slotMs;
  /// Stage start time represented as milliseconds since epoch.
  final pulumi.Input<String> startMs;
  /// Current status for the stage.
  final pulumi.Input<String> status;
  /// List of operations within the stage in dependency order (approximately chronological).
  final pulumi.Input<List<ExplainQueryStepResponse>> steps;
  /// Milliseconds the average shard spent waiting to be scheduled.
  final pulumi.Input<String> waitMsAvg;
  /// Milliseconds the slowest shard spent waiting to be scheduled.
  final pulumi.Input<String> waitMsMax;
  /// Relative amount of time the average shard spent waiting to be scheduled.
  final pulumi.Input<double> waitRatioAvg;
  /// Relative amount of time the slowest shard spent waiting to be scheduled.
  final pulumi.Input<double> waitRatioMax;
  /// Milliseconds the average shard spent on writing output.
  final pulumi.Input<String> writeMsAvg;
  /// Milliseconds the slowest shard spent on writing output.
  final pulumi.Input<String> writeMsMax;
  /// Relative amount of time the average shard spent on writing output.
  final pulumi.Input<double> writeRatioAvg;
  /// Relative amount of time the slowest shard spent on writing output.
  final pulumi.Input<double> writeRatioMax;

  /// Creates a new [ExplainQueryStageResponse].
  /// [completedParallelInputs] Number of parallel input segments completed.
  /// [computeMsAvg] Milliseconds the average shard spent on CPU-bound tasks.
  /// [computeMsMax] Milliseconds the slowest shard spent on CPU-bound tasks.
  /// [computeRatioAvg] Relative amount of time the average shard spent on CPU-bound tasks.
  /// [computeRatioMax] Relative amount of time the slowest shard spent on CPU-bound tasks.
  /// [endMs] Stage end time represented as milliseconds since epoch.
  /// [inputStages] IDs for stages that are inputs to this stage.
  /// [name] Human-readable name for stage.
  /// [parallelInputs] Number of parallel input segments to be processed.
  /// [readMsAvg] Milliseconds the average shard spent reading input.
  /// [readMsMax] Milliseconds the slowest shard spent reading input.
  /// [readRatioAvg] Relative amount of time the average shard spent reading input.
  /// [readRatioMax] Relative amount of time the slowest shard spent reading input.
  /// [recordsRead] Number of records read into the stage.
  /// [recordsWritten] Number of records written by the stage.
  /// [shuffleOutputBytes] Total number of bytes written to shuffle.
  /// [shuffleOutputBytesSpilled] Total number of bytes written to shuffle and spilled to disk.
  /// [slotMs] Slot-milliseconds used by the stage.
  /// [startMs] Stage start time represented as milliseconds since epoch.
  /// [status] Current status for the stage.
  /// [steps] List of operations within the stage in dependency order (approximately chronological).
  /// [waitMsAvg] Milliseconds the average shard spent waiting to be scheduled.
  /// [waitMsMax] Milliseconds the slowest shard spent waiting to be scheduled.
  /// [waitRatioAvg] Relative amount of time the average shard spent waiting to be scheduled.
  /// [waitRatioMax] Relative amount of time the slowest shard spent waiting to be scheduled.
  /// [writeMsAvg] Milliseconds the average shard spent on writing output.
  /// [writeMsMax] Milliseconds the slowest shard spent on writing output.
  /// [writeRatioAvg] Relative amount of time the average shard spent on writing output.
  /// [writeRatioMax] Relative amount of time the slowest shard spent on writing output.
  ExplainQueryStageResponse({
    required this.completedParallelInputs,
    required this.computeMsAvg,
    required this.computeMsMax,
    required this.computeRatioAvg,
    required this.computeRatioMax,
    required this.endMs,
    required this.inputStages,
    required this.name,
    required this.parallelInputs,
    required this.readMsAvg,
    required this.readMsMax,
    required this.readRatioAvg,
    required this.readRatioMax,
    required this.recordsRead,
    required this.recordsWritten,
    required this.shuffleOutputBytes,
    required this.shuffleOutputBytesSpilled,
    required this.slotMs,
    required this.startMs,
    required this.status,
    required this.steps,
    required this.waitMsAvg,
    required this.waitMsMax,
    required this.waitRatioAvg,
    required this.waitRatioMax,
    required this.writeMsAvg,
    required this.writeMsMax,
    required this.writeRatioAvg,
    required this.writeRatioMax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedParallelInputs': completedParallelInputs,
      'computeMsAvg': computeMsAvg,
      'computeMsMax': computeMsMax,
      'computeRatioAvg': computeRatioAvg,
      'computeRatioMax': computeRatioMax,
      'endMs': endMs,
      'inputStages': inputStages,
      'name': name,
      'parallelInputs': parallelInputs,
      'readMsAvg': readMsAvg,
      'readMsMax': readMsMax,
      'readRatioAvg': readRatioAvg,
      'readRatioMax': readRatioMax,
      'recordsRead': recordsRead,
      'recordsWritten': recordsWritten,
      'shuffleOutputBytes': shuffleOutputBytes,
      'shuffleOutputBytesSpilled': shuffleOutputBytesSpilled,
      'slotMs': slotMs,
      'startMs': startMs,
      'status': status,
      'steps': pulumi.Input.mapInputValue<List<ExplainQueryStepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<ExplainQueryStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitMsAvg': waitMsAvg,
      'waitMsMax': waitMsMax,
      'waitRatioAvg': waitRatioAvg,
      'waitRatioMax': waitRatioMax,
      'writeMsAvg': writeMsAvg,
      'writeMsMax': writeMsMax,
      'writeRatioAvg': writeRatioAvg,
      'writeRatioMax': writeRatioMax,
    };
  }

  factory ExplainQueryStageResponse.fromMap(Map<String, dynamic> map) {
    return ExplainQueryStageResponse(
      completedParallelInputs: pulumi.Input.fromValue(map['completedParallelInputs'] as String),
      computeMsAvg: pulumi.Input.fromValue(map['computeMsAvg'] as String),
      computeMsMax: pulumi.Input.fromValue(map['computeMsMax'] as String),
      computeRatioAvg: pulumi.Input.fromValue(map['computeRatioAvg'] as double),
      computeRatioMax: pulumi.Input.fromValue(map['computeRatioMax'] as double),
      endMs: pulumi.Input.fromValue(map['endMs'] as String),
      inputStages: pulumi.Input.fromValue((map['inputStages'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      parallelInputs: pulumi.Input.fromValue(map['parallelInputs'] as String),
      readMsAvg: pulumi.Input.fromValue(map['readMsAvg'] as String),
      readMsMax: pulumi.Input.fromValue(map['readMsMax'] as String),
      readRatioAvg: pulumi.Input.fromValue(map['readRatioAvg'] as double),
      readRatioMax: pulumi.Input.fromValue(map['readRatioMax'] as double),
      recordsRead: pulumi.Input.fromValue(map['recordsRead'] as String),
      recordsWritten: pulumi.Input.fromValue(map['recordsWritten'] as String),
      shuffleOutputBytes: pulumi.Input.fromValue(map['shuffleOutputBytes'] as String),
      shuffleOutputBytesSpilled: pulumi.Input.fromValue(map['shuffleOutputBytesSpilled'] as String),
      slotMs: pulumi.Input.fromValue(map['slotMs'] as String),
      startMs: pulumi.Input.fromValue(map['startMs'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<ExplainQueryStepResponse>(map['steps']!, (value) => ExplainQueryStepResponse.fromMap((value as Map).cast<String, dynamic>()))),
      waitMsAvg: pulumi.Input.fromValue(map['waitMsAvg'] as String),
      waitMsMax: pulumi.Input.fromValue(map['waitMsMax'] as String),
      waitRatioAvg: pulumi.Input.fromValue(map['waitRatioAvg'] as double),
      waitRatioMax: pulumi.Input.fromValue(map['waitRatioMax'] as double),
      writeMsAvg: pulumi.Input.fromValue(map['writeMsAvg'] as String),
      writeMsMax: pulumi.Input.fromValue(map['writeMsMax'] as String),
      writeRatioAvg: pulumi.Input.fromValue(map['writeRatioAvg'] as double),
      writeRatioMax: pulumi.Input.fromValue(map['writeRatioMax'] as double),
    );
  }
}

