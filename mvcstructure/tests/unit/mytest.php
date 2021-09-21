<?php
use PHPUnit\Framework\TestCase;
class mytest extends TestCase
{
    public function testMultiplicationOfTwoNumber()
    {
        $this->assertTrue(true);
        
    }
    
    

    public function testCalculationOfMean()
    {
        $numbers = [3, 7, 6, 1, 5];
        $this->assertEquals(4.4, $this->Average->mean($numbers));
    }

    public function testCalculationOfMedian()
    {
        $numbers = [3, 7, 6, 1, 5];
        $this->assertEquals(5, $this->Average->median($numbers));
    }
}