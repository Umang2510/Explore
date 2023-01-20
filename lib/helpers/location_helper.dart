const GOOGLE_API_KEY = 'your key';

class LocationHelper {
  static String generatedLocationPreviewImage(
      {required double latitude, required double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,${longitude}&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C${latitude},${longitude}&markers=color:green%7Clabel:G%7C${latitude},${longitude}&markers=color:red%7Clabel:C%7C40.718217,-73.998284&key=$GOOGLE_API_KEY';
  }
}
