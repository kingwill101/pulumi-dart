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
  const ExtensionsInstanceRuntimeData({
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
      fatalError: (() { final guardedValue = map['fatalError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtensionsInstanceRuntimeDataFatalError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      processingState: (() { final guardedValue = map['processingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtensionsInstanceRuntimeDataProcessingState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateUpdateTime: (() { final guardedValue = map['stateUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

