// ignore_for_file: unused_element, unnecessary_cast


/// The status of the last successful slot swap operation.
class SlotSwapStatusResponse {
  /// The destination slot of the last swap operation.
  final String destinationSlotName;
  /// The source slot of the last swap operation.
  final String sourceSlotName;
  /// The time the last successful slot swap completed.
  final String timestampUtc;

  /// Creates a new [SlotSwapStatusResponse].
  /// [destinationSlotName] The destination slot of the last swap operation.
  /// [sourceSlotName] The source slot of the last swap operation.
  /// [timestampUtc] The time the last successful slot swap completed.
  SlotSwapStatusResponse({
    required this.destinationSlotName,
    required this.sourceSlotName,
    required this.timestampUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationSlotName': destinationSlotName,
      'sourceSlotName': sourceSlotName,
      'timestampUtc': timestampUtc,
    };
  }

  factory SlotSwapStatusResponse.fromMap(Map<String, dynamic> map) {
    return SlotSwapStatusResponse(
      destinationSlotName: map['destinationSlotName'] as String,
      sourceSlotName: map['sourceSlotName'] as String,
      timestampUtc: map['timestampUtc'] as String,
    );
  }
}

