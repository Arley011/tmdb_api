import 'package:test/test.dart';
import '../../../init_script.dart';

import 'package:tmdb_api/tmdb_api.dart';

void main() {
  TMDB tmdb = TMDB(ApiKeys(Keys.API, Keys.API_V4));
  group('Certification', () {
    test('movie', () async {
      Map result = await tmdb.v3.certification.getMovie();
      expect(result is Map, true);
      expect(result.containsKey('status_code'), false);
    });
    test('TV', () async {
      Map result = await tmdb.v3.certification.getTv();
      expect(result is Map, true);
      expect(result.containsKey('status_code'), false);
    });
  });
}
