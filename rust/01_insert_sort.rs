fn insert_sort(v: Vec<usize>) -> Vec<usize> {
/*
 * [] 5
 * [5] 9
 * [5, 9] 6
 * [5, 6, 9] 4
 * [4, 5 ,6 ,9] 20...
 * */
    // TODO: This can be expensive, we could just
    // grab a mutable vector through arguments instead
    // and return it once the values are swapped.
    let mut to_sort = v.clone();

    // We start from 1 because vectors
    // (and most array like data structures)
    // are zero-indexed, this way we can safely
    // -1 the counter without going out of bounds 
    for i in 1..to_sort.len() {
        let mut counter = i;

        while (counter > 0) && (to_sort[counter] < to_sort[counter - 1]) {
            to_sort.swap(counter, counter - 1);
            counter = counter - 1;
        }
    }

    to_sort
}

fn main() {
    let nums = vec![4, 7, 3, 1, 9];
    let chars = vec!['z', 'g', 'u', 'a', 'b'];

    println!("Original vector {:?}", nums);
    println!("Sorted version {:?}", insert_sort(nums));

    println!("Vector of letters {:?}", chars);
    println!("Sorted vector of letters {:?}", insert_sort(chars));
}
