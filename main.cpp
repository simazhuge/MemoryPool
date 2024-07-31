#include "MemoryPool.h"
#include "StackAlloc.h"
#include <cassert>
#include <iostream>

using namespace std;
#define ELEMS 100
#define REPS 50
int main()
{
    StackAlloc<int, MemoryPool<int> > stackPool;
    for (int j = 0; j < REPS; j++)
    {
        assert(stackPool.empty());
        for (int i = 0; i < ELEMS / 4; i++) {
            // Unroll to time the actual code and not the loop
            stackPool.push(i);
            stackPool.push(i);
            stackPool.push(i);
            stackPool.push(i);
        }
        for (int i = 0; i < ELEMS / 4; i++) {
            // Unroll to time the actual code and not the loop
            stackPool.pop();
            stackPool.pop();
            stackPool.pop();
            stackPool.pop();
        }
    }
    return 0;
}
