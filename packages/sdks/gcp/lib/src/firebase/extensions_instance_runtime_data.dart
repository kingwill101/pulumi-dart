// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extensions_instance_runtime_data_fatal_error.dart';
import 'extensions_instance_runtime_data_processing_state.dart';

class ExtensionsInstanceRuntimeData {
  /// The fatal error state for the extension instance
  /// Structure is documented below.
  final pulumi.Input<ExtensionsInstanceRuntimeDataFatalError>? fatalError;
  /// The processing state for the extension instance
  /// Structure is documented below.
  final pulumi.Input<ExtensionsInstanceRuntimeDataProcessingState>? processingState;
  /// The time of the last state update.
  final pulumi.Input<String>? stateUpdateTime;

  /// Creates a new [ExtensionsInstanceRuntimeData].
  /// [fatalError] The fatal error state for the extension instance
  /// [processingState] The processing state for the extension instance
  /// [stateUpdateTime] The time of the last state update.
  ExtensionsInstanceRuntimeData({
    this.fatalError,
    this.processingState,
    this.stateUpdateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fatalError': ?pulumi.Input.mapOptionalInputValue<ExtensionsInstanceRuntimeDataFatalError, Map<String, dynamic>>(fatalError, (value) => value.toMap()),
      'processingState': ?pulumi.Input.mapOptionalInputValue<ExtensionsInstanceRuntimeDataProcessingState, Map<String, dynamic>>(processingState, (value) => value.toMap()),
      'stateUpdateTime': ?stateUpdateTime,
    };
  }

  factory ExtensionsInstanceRuntimeData.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceRuntimeData(
      fatalError: map['fatalError'] == null ? null : (ExtensionsInstanceRuntimeDataFatalError.fromMap((map['fatalError']! as Map).cast<String, dynamic>())).input(),
      processingState: map['processingState'] == null ? null : (ExtensionsInstanceRuntimeDataProcessingState.fromMap((map['processingState']! as Map).cast<String, dynamic>())).input(),
      stateUpdateTime: map['stateUpdateTime'] == null ? null : (map['stateUpdateTime']! as String).input(),
    );
  }
}

