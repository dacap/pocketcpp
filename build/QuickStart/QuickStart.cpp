//     ===========================
//        Welcome to Pocket C++
//     ===========================
//
//     You can compile C++ files using F9 key (try it!).
//     Then you can execute the generated program pressing Ctrl+F9.
//
//     Good luck!

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

// Strongly-typed enums
// http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2007/n2347.pdf
enum class Color : int { Red, Yellow, Blue };

int main()
{
	Color red = Color::Red, blue = Color::Blue;
	cout << "red = " << static_cast<int>(red) << "\n";
	cout << "blue = " << static_cast<int>(blue) << "\n";

	// Initializer lists
	// http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2008/n2672.htm
	vector<int> a = { 1, 2, 3 };

	// Lambdas and begin/end() functions.
	// http://www.open-std.org/JTC1/SC22/WG21/docs/papers/2009/n2927.pdf
	for_each(begin(a), end(a), [](int& v) {
		v *= 2;
	});

	// Range-based for
	// http://www.open-std.org/JTC1/SC22/WG21/docs/papers/2009/n2930.html
	for (int v : a)
		cout << v << "\n";

	// Auto and decltype
	// http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2006/n1984.pdf
	// http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2007/n2343.pdf
	auto x = 3.2, y = 5.4;
	decltype(x + y) z = x + y;
	cout << "(x, y, z) = (" << x << ", " << y << ", " << z << ")\n";

	return 0;
}
