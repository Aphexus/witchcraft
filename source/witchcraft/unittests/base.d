
module witchcraft.unittests.base;

import witchcraft;

import std.algorithm;

class User
{
    mixin Witchcraft;

    string username;
    string password;

    string email;

    ulong createdAt;
    ulong updatedAt;
}

unittest
{
    assert(User.getClass !is null);

    assert(User.getClass.getName     == "User");
    assert(User.getClass.getFullName == "witchcraft.unittests.base.User");
    assert(User.getClass.isAbstract  == false);
    assert(User.getClass.isFinal     == false);

    assert(User.getClass.getFieldNames.isPermutation([
        "username", "password", "email", "createdAt", "updatedAt"
    ]));
}