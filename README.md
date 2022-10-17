# LineaPyModelValidation

This repo uses several implementations of Black-Scholes model to evaluate European Call option price with LineaPy.

* [Monte Carlo method implemented in C++](cpp/cpp_workflow.ipynb)
    1. Edit the [C++ source code](cpp/lib.cpp) if necessary.
    1. Use `subprocess` to compile C++ source code into shared library.
    1. Register functions in the shared library in python as python functions.
    1. Call the python function to get the price from this implementation.
* [`OptionPricing` library in R](R/R_workflow.ipynb)
    1. Edit the [R source code](R/optionpricing_call.r) if necessary.
    1. Use `subprocess` to execute the R code.
        + option parameters is loaded within the R session
        + output result is saved as a local file from R
* Multiple versions of `QuantLib` module in Python
    1. [Load a specific version of QuantLib to get the price.](quantlib/quantlib_1.27.ipynb)
    1. [Use `lineapy.get_function` with version number as input parameters to repeat previous workflow again.](quantlib/quantlib_get_function_1.25.ipynb)
* [VBA script in an Excel spreadsheet](Excel/excel_workflow.ipynb)
    1. Edit value of cells for input parameters and extract value from the cell for price.
    1. Direct call the embedded VBA function to get the price.

All source code, input parameters and result of each implementations are saved as artifacts.
* Use `lineapy.get('<implementation>_price').get_code()` can see the code to evaluate the price
* Use `lineapy.get('<implementation>_price').get_value()` can see the price
* Use `lineapy.get('<implementation>_config').get_value()` can see the input parameters for the implementation
* Use `lineapy.get('<implementation>_source_code').get_value()` can see the source code for the implementation(if applicable).

There is also a [report template notebook](report_sample.ipynb) that puts every from all examples as a summary page. 

If we treat one of the above implementation as the model to validate, and rest of them as benchmark models.
The report template notebook should be a good starting point for model validator to compose the final report.

Note that the Excel example needs to run in an environment with Excel.
