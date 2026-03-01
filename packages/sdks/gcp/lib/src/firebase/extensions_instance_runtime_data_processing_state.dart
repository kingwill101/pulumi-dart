// ignore_for_file: unused_element, unnecessary_cast


class ExtensionsInstanceRuntimeDataProcessingState {
  /// Details about the processing. e.g. This could include the type of
  /// processing in progress or it could list errors or failures.
  /// This information will be shown in the console on the detail page
  /// for the extension instance.
  final String? detailMessage;
  /// The processing state of the extension instance.
  final String? state;

  /// Creates a new [ExtensionsInstanceRuntimeDataProcessingState].
  /// [detailMessage] Details about the processing. e.g. This could include the type of
  /// [state] The processing state of the extension instance.
  ExtensionsInstanceRuntimeDataProcessingState({
    this.detailMessage,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailMessage': ?detailMessage,
      'state': ?state,
    };
  }

  factory ExtensionsInstanceRuntimeDataProcessingState.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceRuntimeDataProcessingState(
      detailMessage: map['detailMessage'] == null ? null : map['detailMessage'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

