require 'change'

describe Change do
	let(:change)	{ Change.new }

	context 'for even change in quarters' do
		it 'can make change $2.00' do
			change.make_change_for(2.00).should == [25, 25, 25, 25, 25, 25, 25, 25]
		end

		it 'can make change $1.00' do
			change.make_change_for(1.00).should == [25, 25, 25, 25]
		end
	end

	context 'for even change in quarters and dimes' do
		it 'can make change $2.30' do
			change.make_change_for(2.35).should == [25, 25, 25, 25, 25, 25, 25, 25, 25, 10]
		end

		it 'can make change $1.20' do
			change.make_change_for(1.20).should == [25, 25, 25, 25, 10, 10]
		end
	end

	context 'for even change in quarters, dimes, & nickels' do
		it 'can make change $2.40' do
			change.make_change_for(2.40).should == [25, 25, 25, 25, 25, 25, 25, 25, 25, 10, 5]
		end
	end

	context 'for even change in quarters, dimes, nickels & pennies' do
		it 'can make change $2.43' do
			change.make_change_for(2.43).should == [25, 25, 25, 25, 25, 25, 25, 25, 25, 10, 5, 1, 1, 1]
		end
	end

	context 'for invalid parameters' do
		it 'returns [] when given 0' do
			change.make_change_for(0).should == []
		end

		it 'returns nil when given negative numbers' do
			change.make_change_for(-10).should be_nil
		end

		it 'returns nil when given anything other than numbers' do
			change.make_change_for(:wtf).should be_nil
		end
	end
end