import 'dart:math';

void main() {
  RandomizedSet set = RandomizedSet();

  print(set.insert(1));
  print(set.insert(2));
  print(set.insert(2));

  print(set.remove(1));
  print(set.remove(5));

  print(set.getRandom());
}

class RandomizedSet {
  List<int> nums = [];
  Map<int, int> indexMap = {};
  Random random = Random();

  bool insert(int val) {
    if (indexMap.containsKey(val)) {
      return false;
    }

    nums.add(val);

    indexMap[val] = nums.length - 1;

    return true;
  }

  bool remove(int val) {
    if (!indexMap.containsKey(val)) {
      return false;
    }

    int index = indexMap[val]!;

    int lastElement = nums.last;

    nums[index] = lastElement;

    indexMap[lastElement] = index;

    nums.removeLast();

    indexMap.remove(val);

    return true;
  }

  int getRandom() {
    int randomIndex = random.nextInt(nums.length);
    return nums[randomIndex];
  }
}
