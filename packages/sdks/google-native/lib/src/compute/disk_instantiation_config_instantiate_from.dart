/// Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
enum DiskInstantiationConfigInstantiateFrom {
  attachReadOnly("ATTACH_READ_ONLY"),
  blank("BLANK"),
  customImage("CUSTOM_IMAGE"),
  default_("DEFAULT"),
  doNotInclude("DO_NOT_INCLUDE"),
  sourceImage("SOURCE_IMAGE"),
  sourceImageFamily("SOURCE_IMAGE_FAMILY");

  const DiskInstantiationConfigInstantiateFrom(this.wireValue);
  final String wireValue;

  static DiskInstantiationConfigInstantiateFrom fromValue(String value) {
    for (final item in DiskInstantiationConfigInstantiateFrom.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskInstantiationConfigInstantiateFrom value: $value');
  }
}
