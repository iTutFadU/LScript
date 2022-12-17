import $LS.Exe;

public console.print[in] {
	// built-in
};

public console.println[in] {
	set $LS:console.print[@in];
	set $LS:console.print["\n"];
};

public list.newl[length] {
	// built-in
};

public list.new[] {
	// hardcoded
};

public list.get[this, index] {
	return 0?`@this -> @index;
};

public list.set[this, index, value] {
	set 0?`@this -> @index = 0?`@value;
};

public list.add[this, value] {
	// built-in
};

public list.remove[this, value] {
	// built-in
};

public list.removeAt[this, index] {
	// built-in
};

public list.length[this] {
	// built-in
};

public list.size[this] {
	return $LS:list.length[@this];
};

public bool[value] {
	return $LS:convert.toBool[0?`@value];
};

public byte[value] {
	return $LS:convert.toByte[0?`@value];
};

public short[value] {
	return $LS:convert.toShort[0?`@value];
};

public int[value] {
	return $LS:convert.toInt[0?`@value];
};

public long[value] {
	return $LS:convert.toLong[0?`@value];
};

public float[value] {
	return $LS:convert.toFloat[0?`@value];
};

public double[value] {
	return $LS:convert.toDouble[0?`@value];
};

public str[value] {
	return $LS:convert.toStr[0?`@value];
};

public convert.toBool[value] {
	// built-in
};

public convert.toByte[value] {
	// built-in
};

public convert.toShort[value] {
	// built-in
};

public convert.toInt[value] {
	// built-in
};

public convert.toLong[value] {
	// built-in
};

public convert.toFloat[value] {
	// built-in
};

public convert.toDouble[value] {
	// built-in
};

public convert.toStr[value] {
	// built-in
};
